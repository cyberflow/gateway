actions :add
default_action :add

attribute :wan, :kind_of => String, :required => true
attribute :lan, :kind_of => String, :name_attribute => true
