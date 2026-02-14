cask "scratch" do
  version "0.5.1"
  sha256 "70aa0e8fd737ca12f417ab588631bcd2ac2b9daea0621f8ac8d23906b734f499"

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