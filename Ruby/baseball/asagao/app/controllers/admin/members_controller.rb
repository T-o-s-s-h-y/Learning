module Admin
  class MembersController < Admin::Base
    # 会員一覧
    def index
      @members = Member.order('number').page(params[:page]).per(15)
    end

    # 検索
    def search
      @members = Member.search(params[:query]).page(params[:page]).per(15)
      render 'index'
    end

    def show
      @member = Member.find(params[:id])
    end

    # 新規作成フォーム
    def new
      @member = Member.new(birthday: Date.new(1990, 1, 1))
    end

    def edit
      @member = Member.find(params[:id])
    end

    # 会員の新規登録
    def create
      @member = Member.new(member_params)
      if @member.save
        redirect_to [:admin, @member], notice: '会員を登録しました'
      else
        render 'new'
      end
    end

    # 会員情報の更新
    def update
      @member = Member.find(params[:id])
      @member.assign_attributes(member_params)
      if @member.save
        redirect_to [:admin, @member], notice: '会員情報を更新しました'
      else
        render 'edit'
      end
    end

    # 会員の削除
    def destroy
      @member = Member.find(params[:id])
      @member.destroy
      redirect_to :admin_members, notice: '会員を削除しました'
    end

    private

    # ストロングパラメータ
    def member_params
      attrs = %i[new_profile_picture remove_profile_picture number name full_name sex birthday email
                 administrator]
      attrs << :password if params[:action] == 'create'

      params.require(:member).permit(attrs)
    end
  end
end
