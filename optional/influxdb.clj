; Forward streams to InfluxDB
(def graph
     (influxdb
      {:host "influxdb"
       :port 8086
       :db "metrics"
       :series #(str (:host %) "." (:service %))}
       )
     )
(streams graph)
