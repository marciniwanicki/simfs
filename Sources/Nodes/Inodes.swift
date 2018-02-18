//
// Created by Marcin Iwanicki on 21/01/2018.
//

import Foundation

class Inodes {

  private var list = [Int: Inode]()

  func add(_ inodeId: Int, _ inode: Inode) {
    self.list[inodeId] = inode
  }

  func remove(_ inodeId: Int) {
    guard let index = self.list.index(forKey: inodeId) else {
      return
    }
    self.list.remove(at: index)
  }

  func inode(by inodeId: Int) -> Inode? {
    return self.list[inodeId]
  }
}
