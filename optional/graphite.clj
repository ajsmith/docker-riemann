; Forward streams to Graphite.
(def graph (graphite {:host "graphite"}))
(streams graph)
