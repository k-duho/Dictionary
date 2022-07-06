class SyncGithubBatch
  class << self
    def run
      new.exec
    end
  end

  def exec
    GithubUser.all.each do |github_user|
      github_client = init_client(github_user.auth_token)

      sync_github_repository(github_user, github_client)
    end
  end

  private

  def sync_github_repository(github_user, github_client)
    SyncRepositoryJob.perform_later(github_user)
  end

  def sync_github_organization(github_user, github_client)
    SyncOrganizationJob.perform_now(github_user)
  end

  def init_client(github_user_token)
    ::Github::Client.new(github_user_token)
  end
end
