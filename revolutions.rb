include Math

class Revolutions

  def rpmToRadPS(rpm)
    return rpm / 60 * (2.0 * PI)
  end

  def revolutionsDelta (oI,oF,deltaT,alpha)
    if (alpha==nil)
      alpha = findAlpha(oI,oF,deltaT)
    end
    return ((oI * deltaT) + (0.5 * alpha * (deltaT ** 2))) / (2.0 * PI)
  end
cd 
  def findAlpha (oI,oF,deltaT)
    return (oF - oI) / deltaT
  end
    
end

rev = Revolutions.new

puts rev.revolutionsDelta(rev.rpmToRadPS(150.0),rev.rpmToRadPS(60.0),5.0,nil).to_s
#example
#A small steel roulette ball rolls around the inside of a 30-cm diameter roulette wheel. It is spun at 150 rpm, but it slows to 60 rpm over an interval of 5.0s. How many revolutions does the ball make during these 5.0s?

#the ball is a particle in uniform circular motion. Assume constant angular acceleration as it slows.

#thDelta = thF - thI = oI(tDelta) + 1/2(alpha(deltaT)^2)
#angular acceleration, alpha
#alpha = oDelta/tDelta
