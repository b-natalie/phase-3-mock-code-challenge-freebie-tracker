class Dev < ActiveRecord::Base
    has_many :freebies
    has_many :companies, through: :freebies

    def freebies
        Freebie.where(dev_id: self.id)
    end

    def companies
        self.freebies.map { |freebie| Company.find(freebie.company_id)}.uniq
    end

    def received_one?(item_name)
        if self.freebies.find_by(item_name: item_name)
            return true
        else
            return false
        end
    end

    def give_away(dev: , freebie: )
        if self.id == freebie.dev_id
            freebie.dev_id = dev.id
            freebie.save
        end
    end

end
