class ServiceLocator
  def self.register_service(service_name, service_instance)
    @services ||= {}
    @services[service_name] = service_instance
  end

  def self.get_service(service_name)
    @services[service_name]
  end
end
