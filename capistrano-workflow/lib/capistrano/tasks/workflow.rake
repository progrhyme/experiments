namespace :workflow do
  task :start do
    begin
      invoke 'deploy:starting'
      invoke 'deploy:started'
    rescue
      raise
    ensure
      invoke 'workflow:finish'
    end
  end

  task :update do
    begin
      invoke 'deploy:updating'
      invoke 'deploy:updated'
      invoke 'deploy:publishing'
      invoke 'deploy:published'
      invoke 'deploy:finishing'
      invoke 'deploy:finished'
    rescue
      raise
    ensure
      invoke 'workflow:finish'
    end
  end

  task :revert do
    begin
      invoke 'deploy:reverting'
      invoke 'deploy:reverted'
      invoke 'deploy:publishing'
      invoke 'deploy:published'
      invoke 'deploy:finishing_rollback'
      invoke 'deploy:finished'
    rescue
      raise
    ensure
      invoke 'workflow:finish'
    end
  end

  task :finish do
    p :finish
  end
end
