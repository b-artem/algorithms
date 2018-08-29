class BreadthFirstSearch
  def self.search(graph:, source_vertex:)
    # bfs_info = Array.new(graph.size) { { distance: nil, predecessor: nil } }
    bfs_info = Array.new(graph.size) { {} }
    bfs_info[source_vertex][:distance] = 0

    queue = Queue.new
    queue.enq source_vertex

    until queue.empty?
      current_vertex = queue.deq
      graph[current_vertex].each do |neighbor|
        next if bfs_info[neighbor][:distance]
        bfs_info[neighbor][:distance] = bfs_info[current_vertex][:distance] + 1
        bfs_info[neighbor][:predecessor] = current_vertex
        queue.enq neighbor
      end
    end

    bfs_info
  end
end

require 'test/unit'
extend Test::Unit::Assertions

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

bfs_info.each_with_index do |vertex, index|
  puts "vertex #{index}: distance = #{vertex.fetch(:distance, '-')}, predecessor = #{vertex.fetch(:predecessor, '-')}"
end

assert_equal bfs_info[0], { distance: 4, predecessor: 1 }
assert_equal bfs_info[1], { distance: 3, predecessor: 4 }
assert_equal bfs_info[2], { distance: 1, predecessor: 3 }
# assert_equal bfs_info[3], { distance: 0, predecessor: nil }
assert_equal bfs_info[3], { distance: 0 }
assert_equal bfs_info[4], { distance: 2, predecessor: 2 }
assert_equal bfs_info[5], { distance: 2, predecessor: 2 }
assert_equal bfs_info[6], { distance: 1, predecessor: 3 }
# assert_equal bfs_info[7], { distance: nil, predecessor: nil }
assert_equal bfs_info[7], {}
