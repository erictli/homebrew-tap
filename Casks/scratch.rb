cask "scratch" do
  version "0.7.0"
  sha256 "050567ca76ab394781ae08c6e4b4fa4992f8f7ad7a153fe423558d7ac0e554ab"

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