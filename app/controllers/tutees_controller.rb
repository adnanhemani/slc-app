class TuteesController < ApplicationController

    before_action :validate_params, only: [:update]
    
    def validate_params
        if params[:tutee][:first_name] == nil || params[:tutee][:first_name].length == 0
                throw ArgumentError
        elsif params[:tutee][:last_name] == nil || params[:tutee][:last_name].length == 0
                throw ArgumentError        
        end
    end
    

    def show
    end
    
    def index
        #Should there be anything here?
    end

    #Not sure?
    def create
        #@tutee = Tutee.new(tutee_params)
    end
    
    def new
       #Empty - something here?
    end
    
    #Display form for tutee to enter in attributes
    def edit
        @tutee = Tutee.find(params[:id])
    end

    #Update all of the attributes gathered from edit form
    def update
        @time_availabilitys_ids = params[:tutee][:time_availabilitys_ids]
        @tutee = Tutee.find(params[:id])
        @tutee.update_attributes!(tutee_params)
        @tutee.time_availabilitys.destroy_all
        if @time_availabilitys_ids != nil
            @time_availabilitys_ids.each do |id|
                time = TimeAvailability.find(id)
                @tutee.time_availabilitys << time
            end
        end
        flash[:notice] = "Form for #{@tutee.first_name + ' ' + @tutee.last_name} was succesfully created"
        redirect_to tutor_match_path(@tutee)
    end
    
    def destroy
    end
    
    def tutor_match
        @tutee = Tutee.find(params[:id])
        @tutee.assign_tutor_and_session
        @tutor = @tutee.tutor
        if !@tutor.nil?
            @study_session_time = @tutee.study_session.time_availabilitys[0]
            @display_text = "#{@tutor.first_name}  #{@tutor.last_name} - "
            @display_text += "#{@study_session_time.day} at #{@study_session_time.start_time}"
            TutorMailer.match_notification(@tutee, @tutor, @study_session_time).deliver
        else
            @display_text = "Your time availabilities do not match with any tutor. Please revise your preferences & try again."
        end
    end
    
    def update_times
        time_ids.each do |id|
            time = TimeAvailability.find(id)
            tutee.time_availabilitys << time
        end
    end
    
    private
    
    def tutee_params
        params.require(:tutee).permit(:first_name, :last_name, :sid, :grade, :email, :phone_number,
        :semesters_at_cal, :major, :requested_class, :DSP, :EOP, :SBC, :FPF, :TRSP, :UCIEP, :BISP)
    end
end

