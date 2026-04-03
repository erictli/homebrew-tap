cask "scratch" do
  version "0.10.0"
  sha256 "6ad677b7703bd5c380f81d216157f60e92460a226745dd700215fa468a02b589"

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