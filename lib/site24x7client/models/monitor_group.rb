module Site24x7client
  class MonitorGroup < BaseModel
    [
      :group_id,               # string  Unique ID generated by the server. This can be used as an identifier.
      :display_name,           # string  Display Name for the Monitor Group.
      :description,            # string  Description for the Monitor Group.
      :monitors,               # array Monitors to be associated to the group.
      :health_threshold_count, # int Number of monitors' health that decide the group status. 
                               # ‘0’ implies that all the monitors are considered for determining the group status. 
                               # Default value is 1
      :dependency_resource_id, # string  Suppress alert when dependent monitor is down
      :suppress_alert          # boolean Suppress alert when dependent monitor is down
    ].each do |key|
      attribute(key)
    end
  end
end
