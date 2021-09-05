//
//  ViewController.swift
//  PostReader
//
//  Created by Bilal Rahman on 05/09/21.
//

import UIKit

class PostsViewController: UIViewController {
    
    @IBOutlet weak var postsTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerTableViewCells()
        postsTableView.delegate = self
        postsTableView.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    private func registerTableViewCells() {
        postsTableView.register(
            UINib(
                nibName: "PostContentTableViewCell",
                bundle: nil),
            forCellReuseIdentifier: "PostContentTVC")
    }
}

extension PostsViewController: UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let tableCell =
            tableView.dequeueReusableCell(
                withIdentifier:
                    "PostContentTVC",
                for: indexPath) as?
            PostContentTableViewCell
        return tableCell!
    }
    
    
}
