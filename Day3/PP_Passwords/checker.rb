class Checker
  def initialize(email, password)
      @email = email
      @password = password
  end

  def charactercounter
    if @password.length > 7
      true
    end

  end

  def lenusy
    if @password.match(/[[:alnum:]]/) &&
      @password.match(/[[:punct:]]/)
      true
    else
      false
    end

  end

  def cases
    if @password.match(/[[:upper:]]/) &&
       @password.match(/[[:lower:]]/)
      true
    else
      false

    end

  end

  def dominate
    @nameemail = @email.split("@")[0]
    @domainemail = @email.split("@")[1]
    if @password.include?(@nameemail) || @password.include?(@domainemail)
      true
    else
      false
    end
  end

end
