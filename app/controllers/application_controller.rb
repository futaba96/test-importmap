class ApplicationController < ActionController::Base
  # 開発環境では制限なし（本番環境のみ modern なブラウザを許可）
  unless Rails.env.development?
    allow_browser versions: :modern
  end
end
