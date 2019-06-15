class CoController < ApplicationController

  def home1

    
    x = Kasitumon.all
    @z = Kasitumon.new

    x.each do |xx|
      
        if xx.koumoku == "Day0" then
          @y0 = xx.nitiji
        elsif xx.koumoku == "Day1" then
          @y1 = xx.nitiji
        elsif xx.koumoku == "Day2" then
          @y2 = xx.nitiji
        elsif xx.koumoku == "Day3" then
          @y3 = xx.nitiji
        elsif xx.koumoku == "Day4" then
          @y4 = xx.nitiji
        end

        @y = xx.nitiji
    end

  end

  def home

    @zz = params[:commit]

    if @zz == "ALL_Day" then
      @x = Kasitumon.all
    elsif @zz == "Day1" then
      @x = Kasitumon.where("koumoku = :koumoku" , koumoku: "Day1")
    elsif @zz == "Day2" then
      @x = Kasitumon.where("koumoku = :koumoku" , koumoku: "Day2")
    elsif @zz == "Day3" then
      @x = Kasitumon.where("koumoku = :koumoku" , koumoku: "Day3")
    elsif @zz == "Day4" then
      @x = Kasitumon.where("koumoku = :koumoku" , koumoku: "Day4")
    elsif @zz == "投稿" then

      @z = Kasitumon.new(z_params)

      @z.nitiji = Time.new
      @z.nitiji = @z.nitiji.slice(0,19)
      @z.save

      @zz = @z.koumoku
      if @zz == "ALL_Day" then
        @x = Kasitumon.all
      elsif @zz == "Day1" then
        @x = Kasitumon.where("koumoku = :koumoku" , koumoku: "Day1")
      elsif @zz == "Day2" then
        @x = Kasitumon.where("koumoku = :koumoku" , koumoku: "Day2")
      elsif @zz == "Day3" then
        @x = Kasitumon.where("koumoku = :koumoku" , koumoku: "Day3")
      elsif @zz == "Day4" then
        @x = Kasitumon.where("koumoku = :koumoku" , koumoku: "Day4")
      end

    else

      a = Kasitumon.new(z1_params)
      @w = Kasitumon.find(a.id)

      if @w.nitiji1  == nil  then
        @w.nitiji1 = Time.new
        @w.nitiji1 = @w.nitiji1.slice(0,19)
      elsif @w.nitiji2 == nil  then
        @w.nitiji2 = Time.new
        @w.nitiji2 = @w.nitiji2.slice(0,19)
      elsif @w.nitiji3 == nil  then
        @w.nitiji3 = Time.new
        @w.nitiji3 = @w.nitiji3.slice(0,19)
      end

      @w.update(z1_params)

      @zz = @w.koumoku
      
      if @zz == "ALL_Day" then
        @x = Kasitumon.all
      elsif @zz == "Day1" then
        @x = Kasitumon.where("koumoku = :koumoku" , koumoku: "Day1")
      elsif @zz == "Day2" then
        @x = Kasitumon.where("koumoku = :koumoku" , koumoku: "Day2")
      elsif @zz == "Day3" then
        @x = Kasitumon.where("koumoku = :koumoku" , koumoku: "Day3")
      elsif @zz == "Day4" then
        @x = Kasitumon.where("koumoku = :koumoku" , koumoku: "Day4")
      end

    end

    @y = Kasitumon.new
    
  end

  def update

    a = Kasitumon.new(z1_params)
    @w = Kasitumon.find(a.id)

    if @w.nitiji1  == nil  then
      @w.nitiji1 = Time.new
    elsif @w.nitiji2 == nil  then
      @w.nitiji2 = Time.new
    elsif @w.nitiji3 == nil  then
      @w.nitiji3 = Time.new
    end

    @w.update(z1_params)
    redirect_to "/kasitumon"
  end


  private

  def z_params
    params.require(:kasitumon).permit(:shitumonsya, :shitumonbun , :koumoku)
  end

  def z1_params
    params.require(:kasitumon).permit(:id , :koumoku , :hentousya1, :hentoubun1 , :hentousya2, :hentoubun2 , :hentousya3, :hentoubun3 )
  end

end
