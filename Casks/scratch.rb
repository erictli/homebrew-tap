cask "scratch" do
  version "0.7.1"
  sha256 "c6c8d2aace7a6ae77d4b12427c1fa8df118196d6d34da49af3b81ab090be6e5e"

  url "https://github.com/erictli/scratch/releases/download/v#{version}/Scratch_#{version}_universal.dmg"
  name "Scratch"
  desc "Minimalist, offline-first markdown note-taking app"
  homepage "https://github.com/erictli/scratch"

  depends_on macos: ">= :catalina"

  app "Scratch.app"

  zap trash: [
    "~/Library/Application Support/com.scratch.app",
  ]
end