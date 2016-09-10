require 'test_helper'

class VariantsControllerTest < ActionController::TestCase
  setup do
    @variant = variants(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:variants)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create variant" do
    assert_difference('Variant.count') do
      post :create, variant: { barcode: @variant.barcode, last_shopify_sync: @variant.last_shopify_sync, option1: @variant.option1, option2: @variant.option2, option3: @variant.option3, price: @variant.price, product_id: @variant.product_id, shopify_variant_id: @variant.shopify_variant_id, sku: @variant.sku }
    end

    assert_redirected_to variant_path(assigns(:variant))
  end

  test "should show variant" do
    get :show, id: @variant
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @variant
    assert_response :success
  end

  test "should update variant" do
    patch :update, id: @variant, variant: { barcode: @variant.barcode, last_shopify_sync: @variant.last_shopify_sync, option1: @variant.option1, option2: @variant.option2, option3: @variant.option3, price: @variant.price, product_id: @variant.product_id, shopify_variant_id: @variant.shopify_variant_id, sku: @variant.sku }
    assert_redirected_to variant_path(assigns(:variant))
  end

  test "should destroy variant" do
    assert_difference('Variant.count', -1) do
      delete :destroy, id: @variant
    end

    assert_redirected_to variants_path
  end
end
