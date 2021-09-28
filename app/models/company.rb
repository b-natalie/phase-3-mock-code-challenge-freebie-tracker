class Company < ActiveRecord::Base
    has_many :freebies
    has_many :dev, through: :freebies

    def freebies
        Freebie.where(company_id: self.id)
    end

    def devs
        self.freebies.map {|freebie| Dev.find(freebie.dev_id)}.uniq
    end

    def give_freebie(dev: , item_name: , value: )
        Freebie.create(item_name: item_name, value: value, dev: dev, company: self)
    end

    def self.oldest_company
        Company.where(founding_year: Company.minimum(:founding_year))
    end

end
