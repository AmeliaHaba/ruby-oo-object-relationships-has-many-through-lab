class Patient

    @@all = []

    attr_accessor :name

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_appointment(date, doc)
        Appointment.new(date, self, doc)
        
    end

    def appointments
        Appointment.all.map do |appt|
            if appt.patient == self
                appt
            end
        end
    end

    def doctors
        Appointment.all.collect do |appt|
            if appt.patient == self
                appt.doctor
            end
        end

    end 


end 