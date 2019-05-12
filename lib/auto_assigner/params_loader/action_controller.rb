module AutoAssigner
  module ParamsLoader
    module ActionController
      def load_params(params)
        params_hash = params.permit!.to_h
        targets = params_hash.keys.select { |key| key.include?('_id') }
        return if targets.blank?
        
        targets.each do |target|
          hash = params_hash.each_pair { |key, value| puts "key: #{key}, value :#{value}" }
          key, val = hash.assoc(target.dup)
          key.slice!('_id')
          key.camelcase.constantize.find(val)
        end
      end

      ::ActionController::Base.send(:include, self)
    end
  end
end 
