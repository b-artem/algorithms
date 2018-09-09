class BreadthFirstSearch
  def self.search(graph:, source_vertex:)
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
