cask "scratch" do
  version "0.3.0"
  sha256 "4b9821ef9d3755e7620112f307c21c63cc4173e6344ff8fb6939669f3c094c1c"

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
