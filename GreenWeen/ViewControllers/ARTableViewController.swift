//
//  ARTableViewController.swift
//  GreenWeen
//
//  Created by Rem on 5.06.21.
//

import UIKit

struct Category {
    let arList: ArList
    let cellModel: [CellModel]
}

class ARTableViewController: UITableViewController {
    
    private let imageNamesForeHeader: [String] = [
        "thuja1", "birch1", "cedar1",
        "fir1", "forsythia1", "linden1",
        "maple1", "poplar1", "acacia1", "wisteria1"
    ].sorted { $1 > $0 }
    
    private let data: [Category] = [
        Category(arList: ArList(name: "Thuja", shortDiscription: "Welcome Thuja"),
                 cellModel: [.collectionView(model: [
                                                CollectionTableCellModel(imageName: "thuja2"),
                                                CollectionTableCellModel(imageName: "thuja3"),
                                                CollectionTableCellModel(imageName: "thuja4"),
                                                CollectionTableCellModel(imageName: "thuja5"),
                                                CollectionTableCellModel(imageName: "thuja6"),
                                                CollectionTableCellModel(imageName: "thuja7"),
                                                CollectionTableCellModel(imageName: "thuja8"),
                                                CollectionTableCellModel(imageName: "thuja9")], rows: 2),
                             .list(model: [ListCellModel(title: "Thuja are evergreen trees growing from 10 to 200 feet (3 to 61 metres) tall, with stringy-textured reddish-brown bark. The shoots are flat, with side shoots only in a single plane. The leaves are scale-like 1–10 mm long, except young seedlings in their first year, which have needle-like leaves. The scale leaves are arranged in alternating decussate pairs in four rows along the twigs")])]),
        Category(arList: ArList(name: "Birch", shortDiscription: "Wecome Birch"),
                 cellModel: [.collectionView(model: [
                                                CollectionTableCellModel(imageName: "birch2"),
                                                CollectionTableCellModel(imageName: "birch3"),
                                                CollectionTableCellModel(imageName: "birch4"),
                                                CollectionTableCellModel(imageName: "birch5"),
                                                CollectionTableCellModel(imageName: "birch6"),
                                                CollectionTableCellModel(imageName: "birch7"),
                                                CollectionTableCellModel(imageName: "birch8"),
                                                CollectionTableCellModel(imageName: "birch9")], rows: 2),
                             .list(model: [ListCellModel(title: "Birch species are generally small to medium-sized trees or shrubs, mostly of northern temperate and boreal climates. The simple leaves are alternate, singly or doubly serrate, feather-veined, petiolate and stipulate. They often appear in pairs, but these pairs are really borne on spur-like, two-leaved, lateral branchlets. The fruit is a small samara, although the wings may be obscure in some species")])]),
        Category(arList: ArList(name: "Cedar", shortDiscription: "Welcome Thuja"),
                 cellModel: [.collectionView(model: [
                                                CollectionTableCellModel(imageName: "cedar2"),
                                                CollectionTableCellModel(imageName: "cedar3"),
                                                CollectionTableCellModel(imageName: "cedar4"),
                                                CollectionTableCellModel(imageName: "cedar5"),
                                                CollectionTableCellModel(imageName: "cedar6"),
                                                CollectionTableCellModel(imageName: "cedar7"),
                                                CollectionTableCellModel(imageName: "cedar8"),
                                                CollectionTableCellModel(imageName: "cedar9")], rows: 2),
                             .list(model: [ListCellModel(title: "Cedrus trees can grow up to 30–40 m (occasionally 60 m) tall with spicy-resinous scented wood, thick ridged or square-cracked bark, and broad, level branches. The shoots are dimorphic, with long shoots, which form the framework of the branches, and short shoots, which carry most of the leaves. The leaves are evergreen and needle-like, 8–60 mm long, arranged in an open spiral phyllotaxis on long shoots, and in dense spiral clusters of 15–45 together on short shoots; they vary from bright grass-green to dark green to strongly glaucous pale blue-green, depending on the thickness of the white wax layer which protects the leaves from desiccation")])]),
        Category(arList: ArList(name: "Fir", shortDiscription: "Wecome Birch"),
                 cellModel: [.collectionView(model: [
                                                CollectionTableCellModel(imageName: "fir2"),
                                                CollectionTableCellModel(imageName: "fir3"),
                                                CollectionTableCellModel(imageName: "fir4"),
                                                CollectionTableCellModel(imageName: "fir5"),
                                                CollectionTableCellModel(imageName: "fir6"),
                                                CollectionTableCellModel(imageName: "fir7"),
                                                CollectionTableCellModel(imageName: "fir8"),
                                                CollectionTableCellModel(imageName: "fir9")], rows: 2),
                             .list(model: [ListCellModel(title: "Firs (Abies) are a genus of 48–56 species of evergreen coniferous trees in the family Pinaceae. They are found through much of North and Central America, Europe, Asia, and North Africa, occurring in mountains over most of the range. Firs are most closely related to the genus Cedrus (cedar). Douglas firs are not true firs, being of the genus Pseudotsuga.")])]),
        Category(arList: ArList(name: "Forsythia", shortDiscription: "Welcome Thuja"),
                 cellModel: [.collectionView(model: [
                                                CollectionTableCellModel(imageName: "forsythia2"),
                                                CollectionTableCellModel(imageName: "forsythia3"),
                                                CollectionTableCellModel(imageName: "forsythia4"),
                                                CollectionTableCellModel(imageName: "forsythia5"),
                                                CollectionTableCellModel(imageName: "forsythia6"),
                                                CollectionTableCellModel(imageName: "forsythia7"),
                                                CollectionTableCellModel(imageName: "forsythia8"),
                                                CollectionTableCellModel(imageName: "forsythia9")], rows: 2),
                             .list(model: [ListCellModel(title: "Forsythia are deciduous shrubs typically growing to a height of 1–3 m (3 ft 3 in–9 ft 10 in) and, rarely, up to 6 m (20 ft) with rough grey-brown bark. The leaves are borne oppositely and are usually simple, though sometimes trifoliate with a basal pair of small leaflets; they range between 2 and 10 cm (0.79 and 3.94 in) in length and, rarely, up to 15 cm (5.9 in), with a margin that is serrated or entire (smooth). Twigs may be hollow or chambered, depending on the species")])]),
        Category(arList: ArList(name: "Linden", shortDiscription: "Wecome Birch"),
                 cellModel: [.collectionView(model: [
                                                CollectionTableCellModel(imageName: "linden2"),
                                                CollectionTableCellModel(imageName: "linden3"),
                                                CollectionTableCellModel(imageName: "linden4"),
                                                CollectionTableCellModel(imageName: "linden5"),
                                                CollectionTableCellModel(imageName: "linden6"),
                                                CollectionTableCellModel(imageName: "linden7"),
                                                CollectionTableCellModel(imageName: "linden8"),
                                                CollectionTableCellModel(imageName: "linden9")], rows: 2),
                             .list(model: [ListCellModel(title: "The Linden's (Tilia's) sturdy trunk stands like a pillar and the branches divide and subdivide into numerous ramifications on which the twigs are fine and thick. In summer, these are profusely clothed with large leaves and the result is a dense head of abundant foliage")])]),
        Category(arList: ArList(name: "Maple", shortDiscription: "Welcome Thuja"),
                 cellModel: [.collectionView(model: [
                                                CollectionTableCellModel(imageName: "maple2"),
                                                CollectionTableCellModel(imageName: "maple3"),
                                                CollectionTableCellModel(imageName: "maple4"),
                                                CollectionTableCellModel(imageName: "maple5"),
                                                CollectionTableCellModel(imageName: "maple6"),
                                                CollectionTableCellModel(imageName: "maple7"),
                                                CollectionTableCellModel(imageName: "maple8"),
                                                CollectionTableCellModel(imageName: "maple9")], rows: 2),
                             .list(model: [ListCellModel(title: "Acer /ˈeɪsər/ is a genus of trees and shrubs commonly known as maples. The genus is placed in the family Sapindaceae. There are approximately 132 species, most of which are native to Asia, with a number also appearing in Europe, northern Africa, and North America. Only one species, Acer laurinum, extends to the Southern Hemisphere. The type species of the genus is the sycamore maple, Acer pseudoplatanus, the most common maple species in Europe. The maples usually have easily recognizable palmate leaves (Acer negundo is an exception) and distinctive winged fruits. The closest relatives of the maples are the horse chestnuts. Maple syrup is made from the sap of some maple species.")])]),
        Category(arList: ArList(name: "Poplar", shortDiscription: "Wecome Birch"),
                 cellModel: [.collectionView(model: [
                                                CollectionTableCellModel(imageName: "poplar2"),
                                                CollectionTableCellModel(imageName: "poplar3"),
                                                CollectionTableCellModel(imageName: "poplar4"),
                                                CollectionTableCellModel(imageName: "poplar5"),
                                                CollectionTableCellModel(imageName: "poplar6"),
                                                CollectionTableCellModel(imageName: "poplar7"),
                                                CollectionTableCellModel(imageName: "poplar8"),
                                                CollectionTableCellModel(imageName: "poplar9")], rows: 2),
                             .list(model: [ListCellModel(title: "Poplar, (genus Populus), genus of some 35 species of trees in the willow family (Salicaceae), native to the Northern Hemisphere. The poplar species native to North America are divided into three loose groups: the cottonwoods, the aspens, and the balsam poplars. The name Populus refers to the fact that the trees were often planted around public meeting places in Roman times. The wood of poplars is relatively soft and hence is mostly used to make cardboard boxes, crates, paper, and veneer.")])]),
        Category(arList: ArList(name: "Acacia", shortDiscription: "Welcome Thuja"),
                 cellModel: [.collectionView(model: [
                                                CollectionTableCellModel(imageName: "acacia2"),
                                                CollectionTableCellModel(imageName: "acacia3"),
                                                CollectionTableCellModel(imageName: "acacia4"),
                                                CollectionTableCellModel(imageName: "acacia5"),
                                                CollectionTableCellModel(imageName: "acacia6"),
                                                CollectionTableCellModel(imageName: "acacia7"),
                                                CollectionTableCellModel(imageName: "acacia8"),
                                                CollectionTableCellModel(imageName: "acacia9")], rows: 2),
                             .list(model: [ListCellModel(title: "Acacias are graceful trees that grow in warm climates such as Hawaii, Mexico, and the southwestern United States. The foliage is typically bright green or bluish green and the small blooms may be creamy white, pale yellow, or bright yellow. Acacia may be evergreen or deciduous")])]),
        Category(arList: ArList(name: "Wisteria", shortDiscription: "Wecome Birch"),
                 cellModel: [.collectionView(model: [
                                                CollectionTableCellModel(imageName: "wisteria2"),
                                                CollectionTableCellModel(imageName: "wisteria3"),
                                                CollectionTableCellModel(imageName: "wisteria4"),
                                                CollectionTableCellModel(imageName: "wisteria5"),
                                                CollectionTableCellModel(imageName: "wisteria6"),
                                                CollectionTableCellModel(imageName: "wisteria7"),
                                                CollectionTableCellModel(imageName: "wisteria8"),
                                                CollectionTableCellModel(imageName: "wisteria9")], rows: 2),
                             .list(model: [ListCellModel(title: "Wisterias climb by twining their stems around any available support. W. floribunda (Japanese wisteria) twines clockwise when viewed from above, while W. sinensis (Chinese wisteria) twines counterclockwise. This is an aid in identifying the two most common species of wisteria. They can climb as high as 20 m (66 ft) above the ground and spread out 10 m (33 ft) laterally. The world's largest known wisteria is in Sierra Madre, California, measuring more than 1 acre (0.40 ha) in size and weighing 250 tons. Planted in 1894, it is of the 'Chinese lavender' variety")])])
    ].sorted { $1.arList.name > $0.arList.name }
    
    let arList = ArList.getArList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationBar.tintColor = .systemBlue
        tableView.rowHeight = 80
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        data.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let list = data[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = list.arList.name
        content.secondaryText = list.arList.shortDiscription
        content.image = UIImage(named: list.arList.name)
        content.imageProperties.cornerRadius = tableView.rowHeight / 2
        cell.accessoryType = .disclosureIndicator
        cell.contentConfiguration = content
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let category = data[indexPath.row]
        let names = imageNamesForeHeader[indexPath.row]
        let vc = ARDetailController(models: category.cellModel, imageForHeader: UIImage(named: names) ?? UIImage(), navigationTitle: category.arList.name)
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
}
