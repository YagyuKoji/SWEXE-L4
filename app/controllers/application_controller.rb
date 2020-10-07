class ApplicationController < ActionController::Base
def L4
    session[:c] ||= 0 #←遅延初期化というテク。ぜひ覚えて欲しい。
    session[:c] = session[:c].to_i + 1
    render plain: session[:c]
end
end
