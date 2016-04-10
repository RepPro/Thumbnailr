namespace :grape do
  desc 'Print compiled grape routes'
  task :routes do
    ApplicationApi.routes.each do |route|
      puts route
    end
  end
end