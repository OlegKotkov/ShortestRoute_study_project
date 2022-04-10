import UIKit

extension ViewController {
    
    func alertAddAdress(title: String, placeholder: String, comletionHandler: @escaping (String) -> Void) {
     
        let alertController = UIAlertController(title: title, message: nil, preferredStyle: .alert)
        let alertOk = UIAlertAction(title: "Ok", style: .default) {(action) in
        let tfText = alertController.textFields?.first
        guard let text = tfText?.text else { return }
        comletionHandler(text)
        }
    
        alertController.addTextField { (tf) in tf.placeholder = placeholder
        }
        
        let alertCancel = UIAlertAction(title: "Отмена", style: .default) { (_) in
        }
            
            alertController.addAction(alertOk)
            alertController.addAction(alertCancel)
    
            present(alertController, animated: true,completion: nil)
  }
    
    func alertError (tile: String, message: String) {

        let alertController = UIAlertController(title: tile, message: message, preferredStyle: .alert)
        let alertOk = UIAlertAction(title: "Ok", style: .default)
        
        alertController.addAction(alertOk)
        
        present(alertController,animated: true, completion: nil)
    }
}

