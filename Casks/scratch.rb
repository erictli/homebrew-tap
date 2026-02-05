cask "scratch" do
  version "0.2.0"
  sha256 "79107641adf332eefe29d655a4c99b463b80e1783114cf4316d68d9c389e3538"

  url "https://github.com/erictli/scratch/releases/download/v#{version}-beta/Scratch_#{version}_aarch64.dmg"
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