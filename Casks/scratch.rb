cask "scratch" do
  version "1.0.0"
  sha256 "c825318d3aeb27c2700676fbdb1ba454ab27755c9686a4264b4872095a60cbd7"

  url "https://github.com/erictli/scratch/releases/download/v#{version}/Scratch_#{version}_universal.dmg"
  name "Scratch"
  desc "Minimalist, offline-first markdown note-taking app"
  homepage "https://github.com/erictli/scratch"

  depends_on macos: :catalina

  app "Scratch.app"

  zap trash: [
    "~/Library/Application Support/com.scratch.app",
  ]
end
