import UIKit

class MusicListVC: UIViewController {

    @IBAction func backBtnPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.blue;
    }
    
    @IBAction func load3rdScreenPressed(_ sender: Any) {
        performSegue(withIdentifier: "PlaySongVC", sender: "Hey Hi")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? PlaySongVC {
            
            if let song = sender as? String {
                destination.selectedSong = song
            }
        }
    }
}
