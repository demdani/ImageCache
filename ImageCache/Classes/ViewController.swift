//
//  ViewController.swift
//  ImageCache
//
//  Created by Demjen Daniel on 2022. 01. 04..
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private weak var tableView: UITableView!
    private let images: [String] = [
        "https://www.silverkris.com/wp-content/uploads/2021/04/Acquired-Car-Mclaren-GT.jpg",
        "https://www.silverkris.com/wp-content/uploads/2021/04/Acquired-Cars-Mini-Electric.jpg",
        "https://www.silverkris.com/wp-content/uploads/2021/04/Acquired-Car-Suntec-Event.jpg",
        "https://www.silverkris.com/wp-content/uploads/2021/04/Acquired-Cars-new-showroom-photo-2.jpg",
        "https://www.rydeshopper.com/our-top-picks/assets/73dce3de-bc71-4cbb-af03-ebe9853b2a22",
        "https://stimg.cardekho.com/images/carexteriorimages/630x420/Lamborghini/Urus/4418/Lamborghini-Urus-V8/1621927166506/front-left-side-47.jpg",
        "https://carsguide-res.cloudinary.com/image/upload/f_auto,fl_lossy,q_auto,t_cg__marking_background__sm_/v1/editorial/2020-mini-clubman-jcw-hatch-1200x800-15.jpg",
        "https://carsguide-res.cloudinary.com/image/upload/f_auto,fl_lossy,q_auto,t_cg__marking_background__sm_/v1/editorial/Nissan_370Z_2018_silver_5_0.jpg",
        "https://carsguide-res.cloudinary.com/image/upload/f_auto,fl_lossy,q_auto,t_cg__marking_background__sm_/v1/editorial/subaru-wrx-my21-tw-white-1200x800-%2811%29_0.jpg",
        "https://carsguide-res.cloudinary.com/image/upload/f_auto,fl_lossy,q_auto,t_cg__marking_background__sm_/v1/editorial/2021-Mazda-MX-5-Silver-SUV-1200x800-31.jpg",
        "https://carsguide-res.cloudinary.com/image/upload/f_auto,fl_lossy,q_auto,t_cg_hero_large/v1/editorial/2020-toyota-86-GTS-blue-1001x565-%285%29.jpg",
        "https://i2-prod.mirror.co.uk/incoming/article24322312.ece/ALTERNATES/s1200d/0_Motors-150618.jpg",
        "https://www.cnet.com/a/img/CSTqzAl5wJ57HHyASLD-a0vS2O0=/940x528/2021/04/05/9e065d90-51f2-46c5-bd3a-416fd4983c1a/elantra-1080p.jpg",
        "https://www.autocar.co.uk/sites/autocar.co.uk/files/styles/body-image/public/1-corvette-stingray-c8-2019-fd-hr-hero-front_0.jpg?itok=SEYe_vLy",
        "https://www.autocar.co.uk/sites/autocar.co.uk/files/styles/body-image/public/27-morgan-plus-six-2019-rt-cornering-front_0.jpg?itok=KskhfXuy",
        "https://ichef.bbci.co.uk/news/976/cpsprodpb/35B4/production/_117684731_zeroconceptcar.jpg",
        "https://ichef.bbci.co.uk/news/976/cpsprodpb/C448/production/_117684205_lotus.jpg",
        "https://ichef.bbci.co.uk/news/976/cpsprodpb/D81F/production/_117672355_polestar.jpg",
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return images.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ImageCell
        cell.setImage(images[indexPath.row])
        return cell
    }
}

extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 300
    }
}
