.class Lnz/co/telecom/smartphone/widget/stickyheaders/SectionIndexerAdapterWrapper;
.super Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper;
.source "SectionIndexerAdapterWrapper.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# instance fields
.field final mSectionIndexerDelegate:Landroid/widget/SectionIndexer;


# direct methods
.method constructor <init>(Landroid/content/Context;Lnz/co/telecom/smartphone/widget/stickyheaders/StickyListHeadersAdapter;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "delegate"    # Lnz/co/telecom/smartphone/widget/stickyheaders/StickyListHeadersAdapter;

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper;-><init>(Landroid/content/Context;Lnz/co/telecom/smartphone/widget/stickyheaders/StickyListHeadersAdapter;)V

    .line 12
    check-cast p2, Landroid/widget/SectionIndexer;

    .end local p2    # "delegate":Lnz/co/telecom/smartphone/widget/stickyheaders/StickyListHeadersAdapter;
    iput-object p2, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/SectionIndexerAdapterWrapper;->mSectionIndexerDelegate:Landroid/widget/SectionIndexer;

    .line 13
    return-void
.end method


# virtual methods
.method public getPositionForSection(I)I
    .locals 1
    .param p1, "section"    # I

    .prologue
    .line 17
    iget-object v0, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/SectionIndexerAdapterWrapper;->mSectionIndexerDelegate:Landroid/widget/SectionIndexer;

    invoke-interface {v0, p1}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v0

    return v0
.end method

.method public getSectionForPosition(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 22
    iget-object v0, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/SectionIndexerAdapterWrapper;->mSectionIndexerDelegate:Landroid/widget/SectionIndexer;

    invoke-interface {v0, p1}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result v0

    return v0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/SectionIndexerAdapterWrapper;->mSectionIndexerDelegate:Landroid/widget/SectionIndexer;

    invoke-interface {v0}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
