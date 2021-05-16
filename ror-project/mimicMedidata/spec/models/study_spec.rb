require 'rails_helper'

RSpec.describe Study, type: :model do
  context "when study don't have name" do
    it "is invalid" do
      study = Study.new(name: '', age: 10, drug: 'drug1', phase: 4)
      expect(study.valid?).to eq false
    end
  end

  context "when study have name" do
    it "is valid" do
      study = Study.new(name: 'study1', age: 10, drug: 'drug1', phase: 4)
      expect(study.valid?).to eq true
    end
  end

  context "when study don't have drug" do
    it "is invalid" do
      study = Study.new(name: 'study1', age: 10, drug: '', phase: 4)
      expect(study.valid?).to eq false
    end
  end

  context "when study have drug" do
    it "is valid" do
      study = Study.new(name: 'study1', age: 10, drug: 'drug1', phase: 4)
      expect(study.valid?).to eq true
    end
  end

  context "when age <= 7" do
    it "is invalid" do
      study = Study.new(name: 'study1', age: 5, drug: 'drug1', phase: 4)
      expect(study.valid?).to eq false
    end
  end

  context "when age > 7" do
    it "is valid" do
      study = Study.new(name: 'study1', age: 10, drug: 'drug1', phase: 4)
      expect(study.valid?).to eq true
    end
  end

  context "when phase > 5" do
    it "is invalid" do
      study = Study.new(name: 'study1', age: 10, drug: 'drug1', phase: 6)
      expect(study.valid?).to eq false
    end
  end

  context "when phase <= 5" do
    it "is valid" do
      study = Study.new(name: 'study1', age: 10, drug: 'drug1', phase: 4)
      expect(study.valid?).to eq true
    end
  end
end
