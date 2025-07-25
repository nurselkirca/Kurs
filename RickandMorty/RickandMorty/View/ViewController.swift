//
//  ViewController.swift
//  RickandMorty
//
//  Created by Nursel Kırca on 24.07.2025.
//
import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    private var requestHelper: RequestHelper!
    
    var characters: [Character] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        requestHelper = RequestHelper()
        
        setupTable()
        makeRequestAndSetData()
    }
    
    private func setupTable() {
        tableView?.dataSource = self
        tableView?.delegate = self
    
    }
    
    private func makeRequestAndSetData() {
        requestHelper.fetchCharacters { data in
            DispatchQueue.main.async {
                self.characters = data
                self.tableView.reloadData()
            }
        }
    }
}

// MARK: - TableView Methods
extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return characters.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(
            withIdentifier: CharacterCell.identifier,
            for: indexPath
        ) as? CharacterCell else {
            return UITableViewCell()
        }
        
        let character = characters[indexPath.row]
        cell.characterNameLabel.text = character.name
        
        if let imageURL = URL(string: character.image) {
            requestHelper.downloadImage(from: imageURL) { image in
                DispatchQueue.main.async {
                    cell.characterImageView.image = image
                }
            }
        }
        return cell    
    }
}


class RequestHelper {
    func fetchCharacters(completion: @escaping ([Character]) -> Void) {
        guard let url = URL(string: "https://rickandmortyapi.com/api/character") else {
            print("URL Bulunamadı")
            completion([])
            return
        }

        var request = URLRequest(url: url)
        request.httpMethod = "GET"

        URLSession.shared.dataTask(with: request) { data, response, error in
            if let error = error {
                print("Hata var : \(error.localizedDescription)")
                completion([])
                return
            }

            if let response = response as? HTTPURLResponse {
                print("response statusCode: \(response.statusCode)")
                if response.statusCode != 200 {
                    print("response statusCode: \(response.statusCode)")
                    completion([])
                    return
                }
            }

            guard let data = data else {
                print("Data yok ")
                completion([])
                return
            }
            do {
                let decodedResponse = try JSONDecoder().decode(CharacterResponse.self, from: data)
                completion(decodedResponse.results)
            } catch {
                print("Decoding error: \(error)")
                completion([])
            }
        }.resume()
    }
    
    func downloadImage( from url: URL, completion: @escaping (UIImage?) -> Void) {
        URLSession.shared.dataTask(with: url) { data, _, _ in
            guard let data = data else {
                completion(nil)
                return
            }
            completion(UIImage(data: data))
        }.resume()
    }
}

