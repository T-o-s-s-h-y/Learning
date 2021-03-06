require './app/mission_b_079.rb'

describe '相性占いチェック' do
  describe '出力結果のテスト' do
    let(:missionB079) { MissionB079.new }

    it 'テスト1' do
      allow($stdin).to receive(:gets) { "ai ue\n" }
      expect($stdout).to receive(:puts).with(96)
      missionB079.run
    end

    it 'テスト2' do
      allow($stdin).to receive(:gets) { "alice bob\n" }
      expect($stdout).to receive(:puts).with(97)
      missionB079.run
    end
  end
end
