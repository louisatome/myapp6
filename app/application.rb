require 'rho/rhoapplication'
require 'socket'

class AppApplication < Rho::RhoApplication
  def initialize
    # Tab items are loaded left->right, @tabs[0] is leftmost tab in the tab-bar
    # Super must be called *after* settings @tabs!
    @tabs = nil
    #To remove default toolbar uncomment next line:
    #@@toolbar = nil
    super
Thread.new do
    Rho::Log.info('Begin thread!!!!!!','TRUC')
    
    
    
    TCPServer.open("0.0.0.0", 1516) {|serv|
        
       Rho::Log.info('Accept connexion','TRUC')

        socket = serv.accept
        Rho::Log.info("Got client !!! #{socket.inspect}",'TRUC')

}

end
    
  end
end
