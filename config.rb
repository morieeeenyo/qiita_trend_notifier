# frozen_string_literal: true

require 'qiita_trend'
require './qiita_notifier/configuration'

QiitaNotifier.configure do |config|
  # Qiitaでログイン出来るユーザー名とパスワードをセットしてください
  config.user_name = ENV['QIITA_USER']
  config.password = ENV['QIITA_PASSWORD']
  # Slackで作成したアプリのWebHookURLを設定してください
  config.web_hook_url = ENV['WEBHOOK_URL']
end

QiitaTrend.configure do |config|
  config.user_name = QiitaNotifier.configuration.user_name
  config.password = QiitaNotifier.configuration.password
end
