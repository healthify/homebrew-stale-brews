# Sourced from: https://github.com/cartr/homebrew-qt4/blob/b51955ed164c601fb2e297ad55b7ae9f7a30c530/qt-webkit%402.3.rb

class QtWebkitAT23 < Formula
  # Used for testing against local taps
  TAP_BASE = (ENV['TAP_BASE'] || 'healthify').freeze

  desc "Qt port of WebKit (insecure, don't use for Web browsing)"
  homepage "https://trac.webkit.org/wiki/QtWebKit"
  url "https://download.kde.org/stable/qtwebkit-2.3/2.3.4/src/qtwebkit-2.3.4.tar.gz"
  sha256 "c6cfa9d068f7eb024fee3f6c24f5b8b726997f669007587f35ed4a97d40097ca"

  depends_on "#{TAP_BASE}/stale-brews/qt@4.8"

  def install
    ENV["QTDIR"] = Formula["#{TAP_BASE}/stale-brews/qt@4.8"].opt_prefix
    system "Tools/Scripts/build-webkit", "--qt", "--no-webkit2", "--no-video", "--install-headers=#{include}", "--install-libs=#{lib}", "--minimal"
    system "make", "-C", "WebKitBuild/Release", "install"
  end

  def caveats; <<-EOS.undent
    This is years old and really insecure. You shouldn't
    use it if you don't absolutely trust the HTML files
    you're using it to browse. Definely avoid using it
    in a general-purpose Web browser.

    Also, video doesn't work.
    EOS
  end
end
