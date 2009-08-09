require 'test_helper'

class StatisticsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => Statistic.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    Statistic.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    Statistic.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to statistic_url(assigns(:statistic))
  end
  
  def test_edit
    get :edit, :id => Statistic.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    Statistic.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Statistic.first
    assert_template 'edit'
  end
  
  def test_update_valid
    Statistic.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Statistic.first
    assert_redirected_to statistic_url(assigns(:statistic))
  end
  
  def test_destroy
    statistic = Statistic.first
    delete :destroy, :id => statistic
    assert_redirected_to statistics_url
    assert !Statistic.exists?(statistic.id)
  end
end
