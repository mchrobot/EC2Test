bash "postgresconfig" do
  
  code <<-EOH
    cd /
    echo data-mart.cfhjjftfe0pb.eu-west-1.redshift.amazonaws.com:5439:webtrends:saltinig:W3btrends >> .pgpass
    chmod 0600 .pgpass
    
    cp .pgpass /home/wtdatapull
    cp .pgpass /home/shinyuser
    cp .pgpass /home/annualdash
  EOH
end
