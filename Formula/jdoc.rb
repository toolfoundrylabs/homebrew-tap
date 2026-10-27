class Jdoc < Formula
  desc "Browse and compare Java API documentation in a terminal"
  homepage "https://github.com/vineeth-au/jDoc"
  url "https://github.com/vineeth-au/jDoc/releases/download/v0.1.0/jdoc-0.1.0.jar"
  version "0.1.0"
  sha256 "3b43c382c649158343673d81a270e53f9590b835916413c7347624f614c45cee"
  license "MIT"

  depends_on :macos
  depends_on "openjdk"

  def install
    libexec.install "jdoc-#{version}.jar" => "jdoc.jar"
    (bin/"jdoc").write <<~SH
      #!/bin/sh
      exec "#{formula_opt_bin("openjdk")}/java" -jar "#{libexec}/jdoc.jar" "$@"
    SH
    chmod 0755, bin/"jdoc"
  end

  test do
    assert_match "jDoc #{version}", shell_output("#{bin}/jdoc --version")
    assert_match "Java documentation releases:", shell_output("#{bin}/jdoc --versions")
  end
end