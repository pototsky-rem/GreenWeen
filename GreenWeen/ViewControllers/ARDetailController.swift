//
//  ARDetailController.swift
//  GreenWeen
//
//  Created by Rem on 7.06.21.
//

import UIKit
import Hero

class ARDetailController: UITableViewController, UIViewControllerTransitioningDelegate {
    
    private var models = [CellModel]()
    private var navigationTitle: String
    private var imageForHeader = UIImage()
    
    init(models: [CellModel], imageForHeader: UIImage, navigationTitle: String) {
        self.models = models
        self.imageForHeader = imageForHeader
        self.navigationTitle = navigationTitle
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = navigationTitle
        self.tableView = UITableView(frame: self.tableView.frame,
                                     style: .grouped)
        self.tableView.backgroundColor = .systemBackground
        setupStrechyHeaderView()
        setupTableViewRegisters()
    }
    
    func setupTableViewRegisters() {
        tableView.register(UITableViewCell.self,
                           forCellReuseIdentifier: "detailCell")
        tableView.register(CollectionTableViewCell.self,
                           forCellReuseIdentifier: CollectionTableViewCell.identifire)
        tableView.separatorStyle = .none
    }
    
    func setupStrechyHeaderView() {
        let header = StrechyTableHeaderView(frame: CGRect(
                                                x: 0,
                                                y: 0,
                                                width: view.frame.size.width,
                                                height: 250))
        header.imageView.image = imageForHeader
        tableView.tableHeaderView = header
        
    }
    
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        print("Did selec normal list item")
    }
    
    override func scrollViewDidScroll(_ scrollView: UIScrollView) {
        guard let header = tableView.tableHeaderView as? StrechyTableHeaderView else {
            return
        }
        header.scrollViewDidScroll(scrollView: tableView)
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return models.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch models[section] {
        case .list(let models):
            return models.count
        case .collectionView(_, _):
            return 1
        }
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView: UITableViewHeaderFooterView = UITableViewHeaderFooterView()
        var content = UIListContentConfiguration.groupedHeader()
        switch section {
        case 0:
            content.text = "Examples"
            content.textProperties.font = .boldSystemFont(ofSize: 20)
            headerView.contentConfiguration = content
            return headerView
        case 1:
            content.text = "Description"
            content.textProperties.font = .boldSystemFont(ofSize: 20)
            headerView.contentConfiguration = content
            return headerView
        default:
            return headerView
        }

    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
       return 40
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch models[indexPath.section] {
        case .list(let model):
            let model = model[indexPath.row]
            let cell = tableView.dequeueReusableCell(withIdentifier: "detailCell",
                                                     for: indexPath)
            var content = cell.defaultContentConfiguration()
            content.text = model.title
            cell.contentConfiguration = content
            return cell
        case .collectionView(let models, _):
            let cell = tableView.dequeueReusableCell(withIdentifier: CollectionTableViewCell.identifire,
                                                     for: indexPath) as! CollectionTableViewCell
            cell.configure(with: models)
            cell.delegate = self
            return cell
        }
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch models[indexPath.section] {
        case .list(_):
            return UITableView.automaticDimension
        case .collectionView(_, let rows):
            return 150 * CGFloat(rows)
        }
    }
}
// MARK: Pass foto from ARDetailController to PhotoDetailController
extension ARDetailController: CollectionTableViewCellDelegate {
    func didSelectItem(with model: CollectionTableCellModel) {
        print("Selected image \(model.imageName)")
        let photoController = PhotoDetailController()
        photoController.modalPresentationStyle = .fullScreen
        photoController.data = model.imageName
        present(photoController, animated: true)
    }
}
