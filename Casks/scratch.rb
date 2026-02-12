cask "scratch" do
  version "0.4.0"
  sha256 "880ad74328e88299b04bd9b4d5023951829c295cb56095327f099354c1a7a4d2"

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
