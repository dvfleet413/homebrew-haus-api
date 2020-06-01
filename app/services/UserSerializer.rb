class UserSerializer
    def initialize(user_object)
        @user = user_object
    end

    def to_serialized_json
        @user.to_json(:include => {:recipes => {
                                     :include => { :grains => {:only => [:id, :name, :weight]},
                                                   :malts => {:only => [:id, :name, :weight]},
                                                   :hops => {:only => [:id, :name, :hop_type, :weight]},
                                                   :yeast => {:only => [:name]}
                                                 }, :only => [:id, :name, :category, :summary]}},
                      :only => [:id, :name, :email])
    end
end