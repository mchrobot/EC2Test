bash "postgresconfig" do
  
  code <<-EOH
    cd /
    echo data-mart.cfhjjftfe0pb.eu-west-1.redshift.amazonaws.com:5439:webtrends:saltinig:W3btrends >> .pgpass
    chmod 0600 .pgpass
    
    cd /home/wtdatapull
    echo data-mart.cfhjjftfe0pb.eu-west-1.redshift.amazonaws.com:5439:webtrends:saltinig:W3btrends >> .pgpass
    chmod 0600 .pgpass
    
    cd /home/shinyuser
    echo data-mart.cfhjjftfe0pb.eu-west-1.redshift.amazonaws.com:5439:webtrends:saltinig:W3btrends >> .pgpass
    chmod 0600 .pgpass
    
    cd /home/annualdash
    echo data-mart.cfhjjftfe0pb.eu-west-1.redshift.amazonaws.com:5439:webtrends:saltinig:W3btrends >> .pgpass
    chmod 0600 .pgpass
  EOH
end
