# Đầu tiên chạy rails console với 2 lệnh dưới để tạo model và table tương ứng

# rails generate model User email:string:index mobile_phone:string name:string
# rails generate model Post title:string:index content:text is_public:boolean user:references


<!-- Models User -->

class User < ApplicationRecord
    has_many :posts, dependent: :destroy
end
  

<!-- Models Post -->

class Post < ApplicationRecord
    belongs_to :user
    scope :public_posts, -> { where(is_public: true) }
end


# chạy migrate
