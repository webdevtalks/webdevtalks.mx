require 'rails_helper'

describe GithubAuthorization do

  let(:access_token) { 'zzz'}
  let(:username) { 'aaa' }

  subject { GithubAuthorization.new(access_token, username) }

  describe 'new' do
    it 'sets access token in Authorization header' do
      expect(subject.class.headers['Authorization']).to include("token #{access_token}")
    end
  end

  describe 'organization_membership' do

    let(:check_membership_uri) do
      "#{subject.class.base_uri}/orgs/#{subject.organization}/members/#{subject.username}"
    end

    context 'when request response returns a 204 HTTP Status' do
      before do
        FakeWeb.register_uri :get, check_membership_uri, status: ['204', 'No Content']
      end

      it { expect(subject.send(:organization_membership)).to eq(true) }
    end

    context 'when request response status is other than 204' do
      before do
        FakeWeb.register_uri :get, check_membership_uri, status: ['404', 'Not Found']
      end

      it { expect(subject.send(:organization_membership)).to eq(false) }

      it 'receives an error message' do
        subject.send(:organization_membership)
        expect(subject.errors[:base]).to include("You don't belong to the staff.")
      end
    end
  end

end
