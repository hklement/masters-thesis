class FileTree < Tree::TreeNode
  def map_to_js_tree(node)
    {
      children: node.children.map { |child| map_to_js_tree(child) },
      icon: node_icon(node),
      id: node.content.try(:ancestor_id),
      state: {
        disabled: !node.is_leaf?,
        opened: !node.is_leaf?
      },
      text: node.name
    }
  end
  private :map_to_js_tree

  def to_js_tree
    {
      core: {
        data: map_to_js_tree(self)
      }
    }.to_json
  end
end
