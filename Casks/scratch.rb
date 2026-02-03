cask "scratch" do
  version "0.1.0"
  sha256 "e0d187ea99fad11ba74912156d64b1c8f080b269ad85555e58ac8b27b886f7d4"

  url "https://github.com/erictli/scratch/releases/download/v#{version}-beta/Scratch_#{version}.dmg"
  name "Scratch"
  desc "Minimalist, offline-first markdown note-taking app"
  homepage "https://github.com/erictli/scratch"

  depends_on macos: ">= :monterey"
  depends_on arch: :arm64

  app "Scratch.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/Scratch.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Application Support/com.scratch.app",
  ]
end