module Fog
  module Brightbox
    class Compute
      class Real

        def destroy_load_balancer(identifier, options = {})
          return nil if identifier.nil? || identifier == ""
          request(
            :expects  => [202],
            :method   => 'DELETE',
            :path     => "/1.0/load_balancers/#{identifier}",
            :headers  => {"Content-Type" => "application/json"},
            :body     => options.to_json
          )
        end

      end

      class Mock

        def destroy_load_balancer(identifier, options = {})
          Fog::Mock.not_implemented
        end

      end
    end
  end
end