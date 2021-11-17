class StaticController < ApplicationController
  def taco
    render component: "Home", props: { info: "Yo" }
  end
end
