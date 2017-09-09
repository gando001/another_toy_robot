require "spec_helper"

describe LeftCommand do
  let(:robot) { build :robot }
  let(:command) { build :left_command, robot: robot }

  describe "#execute" do
    it "sends left to @robot" do
      expect(command.robot).to receive :left
      command.execute
    end
  end
end
