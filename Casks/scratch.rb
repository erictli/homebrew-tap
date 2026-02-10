cask "scratch" do
  version "0.3.0"
  sha256 "c9e40cf043c796fab7e9025306449024dc7826dd389b3331f4bccdbf157a1c2a"

  url "https://github.com/erictli/scratch/releases/download/v#{version}-beta/Scratch_#{version}_aarch64.dmg"
  name "Scratch"
  desc "Minimalist, offline-first markdown note-taking app"
  homepage "https://github.com/erictli/scratch"

  depends_on macos: ">= :monterey"
  depends_on arch: :arm64

  app "Scratch.app"

  zap trash: [
    "~/Library/Application Support/com.scratch.app",
  ]
end
