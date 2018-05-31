require 'rails_helper'

RSpec.describe AdvertisementsController, type: :controller do
  
  let(:my_ads) { Advertisement.create!(title: RandomData.random_sentence, copy: RandomData.random_paragraph, price: 1234) }

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
     it "assigns [my_ads] to @ads" do
      get :index
      expect(assigns(:ads)).to eq([my_ads])
    end
  end

  describe "GET #show" do
    it "returns http success" do
      get :show, params: { id: my_ads.id }
      expect(response).to have_http_status(:success)
    end
    it "renders the #show view" do
      get :show, params: { id: my_ads.id }
      expect(response).to render_template :show
    end
    it "assigns my_ads to @ads" do 
      get :show, params: { id: my_ads.id }
      expect(assigns(:ads)).to eq(my_ads)
    end
  end

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
    it "renders the #new view" do
      get :new
      expect(response).to render_template :new
    end
    it "instantiates @ads" do
      get :new
      expect(assigns(:ads)).not_to be_nil
    end
  end

  describe "GET #create" do
    it "increases the number of Post by 1" do
      expect{ post :create, params: { advertisement: { title: RandomData.random_sentence, copy: RandomData.random_paragraph, price: 1234 } } }.to change(Advertisement, :count).by(1)
    end
    it "assigns the new post to @ads" do
      post :create, params: { advertisement: { title: RandomData.random_sentence, copy: RandomData.random_paragraph, price: 1234 } }
      expect(assigns(:ads)).to eq Advertisement.last
    end
    it "redirects to then new post" do
      post :create, params: { advertisement: { title: RandomData.random_sentence, copy: RandomData.random_paragraph, price: 1234 } }
      expect(response).to redirect_to Advertisement.last
    end
  end

end
