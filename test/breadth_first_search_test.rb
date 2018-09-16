require_relative '../lib/breadth_first_search'
require 'test/unit'

class BreadthFirstSearchTest < Test::Unit::TestCase
  def test_simple
    adjacency_list = [
      [1],
      [0, 4, 5],
      [3, 4, 5],
      [2, 6],
      [1, 2],
      [1, 2, 6],
      [3, 5],
      []
    ]

    bfs_info = BreadthFirstSearch.search(graph: adjacency_list, source_vertex: 3)

    assert_equal bfs_info[0], { distance: 4, predecessor: 1 }
    assert_equal bfs_info[1], { distance: 3, predecessor: 4 }
    assert_equal bfs_info[2], { distance: 1, predecessor: 3 }
    assert_equal bfs_info[3], { distance: 0 }
    assert_equal bfs_info[4], { distance: 2, predecessor: 2 }
    assert_equal bfs_info[5], { distance: 2, predecessor: 2 }
    assert_equal bfs_info[6], { distance: 1, predecessor: 3 }
    assert_equal bfs_info[7], {}
  end
end
